<?php

namespace Database\Seeders\Themes\Technology;

use Database\Seeders\Themes\Main\BlogSeeder as BaseBlogSeeder;

class BlogSeeder extends BaseBlogSeeder
{
    public function getData(): array
    {
        $this->uploadFiles('news');

        return [
            [
                'name' => 'Breakthrough in Quantum Computing: Computing Power Reaches Milestone',
                'description' => 'Researchers achieve a significant milestone in quantum computing, unlocking unprecedented computing power that has the potential to revolutionize various industries.',
            ],
            [
                'name' => '5G Rollout Accelerates: Next-Gen Connectivity Transforms Communication',
                'description' => 'The global rollout of 5G technology gains momentum, promising faster and more reliable connectivity, paving the way for innovations in communication and IoT.',
            ],
            [
                'name' => 'Tech Giants Collaborate on Open-Source AI Framework',
                'description' => 'Leading technology companies join forces to develop an open-source artificial intelligence framework, fostering collaboration and accelerating advancements in AI research.',
            ],
            [
                'name' => 'SpaceX Launches Mission to Establish First Human Colony on Mars',
                'description' => 'Elon Musk\'s SpaceX embarks on a historic mission to establish the first human colony on Mars, marking a significant step toward interplanetary exploration.',
            ],
            [
                'name' => 'Cybersecurity Advances: New Protocols Bolster Digital Defense',
                'description' => 'In response to evolving cyber threats, advancements in cybersecurity protocols enhance digital defense measures, protecting individuals and organizations from online attacks.',
            ],
            [
                'name' => 'Artificial Intelligence in Healthcare: Transformative Solutions for Patient Care',
                'description' => 'AI technologies continue to revolutionize healthcare, offering transformative solutions for patient care, diagnosis, and personalized treatment plans.',
            ],
            [
                'name' => 'Robotic Innovations: Autonomous Systems Reshape Industries',
                'description' => 'Autonomous robotic systems redefine industries as they are increasingly adopted for tasks ranging from manufacturing and logistics to healthcare and agriculture.',
            ],
            [
                'name' => 'Virtual Reality Breakthrough: Immersive Experiences Redefine Entertainment',
                'description' => 'Advancements in virtual reality technology lead to immersive experiences that redefine entertainment, gaming, and interactive storytelling.',
            ],
            [
                'name' => 'Innovative Wearables Track Health Metrics and Enhance Well-Being',
                'description' => 'Smart wearables with advanced health-tracking features gain popularity, empowering individuals to monitor and improve their well-being through personalized data insights.',
            ],
            [
                'name' => 'Tech for Good: Startups Develop Solutions for Social and Environmental Issues',
                'description' => 'Tech startups focus on developing innovative solutions to address social and environmental challenges, demonstrating the positive impact of technology on global issues.',
            ],
            [
                'name' => 'AI-Powered Personal Assistants Evolve: Enhancing Productivity and Convenience',
                'description' => 'AI-powered personal assistants undergo significant advancements, becoming more intuitive and capable of enhancing productivity and convenience in users\' daily lives.',
            ],
            [
                'name' => 'Blockchain Innovation: Decentralized Finance (DeFi) Reshapes Finance Industry',
                'description' => 'Blockchain technology drives the rise of decentralized finance (DeFi), reshaping traditional financial systems and offering new possibilities for secure and transparent transactions.',
            ],
            [
                'name' => 'Quantum Internet: Secure Communication Enters a New Era',
                'description' => 'The development of a quantum internet marks a new era in secure communication, leveraging quantum entanglement for virtually unhackable data transmission.',
            ],
            [
                'name' => 'Drone Technology Advances: Applications Expand Across Industries',
                'description' => 'Drone technology continues to advance, expanding its applications across industries such as agriculture, construction, surveillance, and delivery services.',
            ],
            [
                'name' => 'Biotechnology Breakthrough: CRISPR-Cas9 Enables Precision Gene Editing',
                'description' => 'The CRISPR-Cas9 gene-editing technology reaches new heights, enabling precise and targeted modifications in the genetic code with profound implications for medicine and biotechnology.',
            ],
            [
                'name' => 'Augmented Reality in Education: Interactive Learning Experiences for Students',
                'description' => 'Augmented reality transforms education, providing students with interactive and immersive learning experiences that enhance engagement and comprehension.',
            ],
            [
                'name' => 'AI in Autonomous Vehicles: Advancements in Self-Driving Car Technology',
                'description' => 'AI algorithms and sensors in autonomous vehicles continue to advance, bringing us closer to widespread adoption of self-driving cars with improved safety features.',
            ],
            [
                'name' => 'Green Tech Innovations: Sustainable Solutions for a Greener Future',
                'description' => 'Green technology innovations focus on sustainable solutions, ranging from renewable energy sources to eco-friendly manufacturing practices, contributing to a greener future.',
            ],
            [
                'name' => 'Space Tourism Soars: Commercial Companies Make Strides in Space Travel',
                'description' => 'Commercial space travel gains momentum as private companies make significant strides in offering space tourism experiences, opening up new frontiers for adventurous individuals.',
            ],
            [
                'name' => 'Humanoid Robots in Everyday Life: AI Companions and Assistants',
                'description' => 'Humanoid robots equipped with advanced artificial intelligence become more integrated into everyday life, serving as companions and assistants in various settings.',
            ],
        ];
    }

    protected function getBlogCategoryData(): array
    {
        $this->uploadFiles('blog-categories', 'technology');

        $data = [
            ['name' => 'Artificial Intelligence'],
            ['name' => 'Cybersecurity'],
            ['name' => 'Blockchain Technology'],
            ['name' => '5G and Connectivity'],
            ['name' => 'Augmented Reality (AR)'],
            ['name' => 'Green Technology'],
            ['name' => 'Quantum Computing'],
            ['name' => 'Edge Computing'],
        ];

        foreach ($data as $index => $item) {
            $data[$index]['metadata']['image'] = $this->filePath('blog-categories/' . $index + 1 . '.jpg', 'technology');
        }

        return $data;
    }

    protected function getBlogTagData(): array
    {
        return [
            ['name' => 'AI'],
            ['name' => 'Machine Learning'],
            ['name' => 'Neural Networks'],
            ['name' => 'Data Security'],
            ['name' => 'Blockchain'],
            ['name' => 'Cryptocurrency'],
            ['name' => 'IoT'],
            ['name' => 'AR Gaming'],
        ];
    }

    protected function getFilePathImageForm(int $index): string
    {
        return $this->filePath('news/' . ($index + 1) . '.jpg', 'technology');
    }
}
